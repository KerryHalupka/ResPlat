function pretty_fig(figname, data)
% figname is a string that contains the name of the figure
% data is a vector that will be plotted in the figure 
    figure('Name',figname,'NumberTitle','off')
    set(gcf,'units','normalized','outerposition',[0 0 1 1])
    plot(data, 'LineWidth', 2)
    axes off
    set(gcf, 'PaperPositionMode', 'auto');
end
