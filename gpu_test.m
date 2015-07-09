% n = 2000;
home;
gpu = gpuDevice;
iters = 5; %run test multiple times and take average

% for n = [100 200 500 1000 2000 4000]
for n = [128 256 512 1024 2048 4096]
    fprintf('n = %d\n',n);
    
    avg = 0; %average accumulator
    for i = 1:iters
        clear A B A_gpu B_gpu
        
        %GENERATE INPUT (OPTION 1): generate on cpu and copy to gpu
%         A = rand(n);
%         A_gpu = gpuArray(A);

        %GENERATE INPUT (OPTION 2): generate on gpu and copy to cpu (100+x faster not including copy)
        A_gpu = rand(n,'gpuArray');
        A = gather(A_gpu);
        
        %measure CPU time
        tic;
        B = fft(A);
        time_cpu = toc;

        %measure GPU time
        tic;
        B_gpu = fft(A_gpu);
        wait(gpu); %required to wait for asynchronous execution to finish
        time_gpu = toc;

        %measure speedup
        speedup = time_cpu/time_gpu;
        fprintf('\tSpeedup was %g\n', speedup);
        avg = avg + speedup/iters;
    end
    fprintf('\tAverage speedup was %g\n', avg);
end