% Scatter plot with option to print smoothed line
%{
%}
classdef ScatterPlot < handle
      
properties
   figS  FigureLH
   % Smoothing method
   smoothingMethod  char = 'rloess';
   smoothingParam   double = 0.2;
end

methods
   %% Constructor
   %{
   Can pass a properties of a FigureLH object. Can also pass the FigureLH object directly
   %}
   function spS = ScatterPlot(figS, varargin)
      if isempty(figS)
         if (nargin < 2)  ||  isempty(varargin)
            spS.figS = FigureLH;
         else
            spS.figS = FigureLH(varargin{:});
         end
      else
         spS.figS = figS;
      end
   end
   
   
   %% Close figure
   function close(spS)
      spS.figS.close;
   end
   
   
   %% Format
   function format(spS)
      spS.figS.format;
   end
   
   
   %% Save
   function save(spS, figFn, saveFigures)
      spS.figS.save(figFn, saveFigures);
   end
   
   
   %% Scatter and smooth line
   %{
   Leaves plot open
   %}
   function plot(spS, xV, yV)
      spS.figS.new;
      hold on;
      iLine = 0;

      sortM = sortrows([xV(:), yV(:)]);
      smoothV = smooth(sortM(:,1), sortM(:,2), spS.smoothingParam, spS.smoothingMethod);
      
      iLine = iLine + 1;
      spS.figS.plot_scatter(sortM(:,1), sortM(:,2), iLine);

      iLine = iLine + 1;
      spS.figS.plot_line(sortM(:,1), smoothV, iLine);

      hold off;
   end
end
   
end
