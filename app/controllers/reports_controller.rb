class ReportsController < ApplicationController
  
  def index
    #creating a column3D chart.
    @col3d = Ezgraphix::Graphic.new(:div_name => 'columnd3d', :c_type => 'col3d')
    @col3d.data = {:usa => 306173000, :uk => 60975000, :brazil => 190467249, :russia => 142008838}
    @col3d.render_options(:w => 400, :y_name => 'Population/Millions')
    
    #creating a pie3D chart.
    @pie3d = Ezgraphix::Graphic.new(:div_name => 'pie3d', :c_type => 'pie3d', :w => 400)
    @pie3d.data = @col3d.data
    @pie3d.render_options(:caption => 'Estimated population 2008')
  end

end
