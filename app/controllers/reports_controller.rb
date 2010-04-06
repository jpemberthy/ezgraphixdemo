class ReportsController < ApplicationController
  
  def index
    #creating a column3D chart.
    @col3d = Ezgraphix::Graphic.new(:div_name => 'columnd3d', :c_type => 'col3d')
    @col3d.data = {:usa => 306173000, :uk => 60975000, :brazil => 190467249, :russia => 142008838}
    @col3d.render_options(:w => 400, :y_name => 'Population/Millions')
    
    #creating a pie3D chart.
    @pie3d = Ezgraphix::Graphic.new(:div_name => 'pie3d', :c_type => 'pie3d', :w => 400, :data => @col3d.data)
    @pie3d.render_options(:caption => 'Estimated population 2008')
    
    #creating a multiserie column3d
    @mcol3d = Ezgraphix::Graphic.new(:div_name => 'mcol_3d', :c_type => 'mscol3d', :w => 700, :labels => ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December"])
    @mcol3d.data = { "Registrations" => [4,2,12,7,0,3,6,1,5,12], "Payments" => [7,3,5,2,1,0,9,5,9,5,10] }
    @mcol3d.labels = ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  end

end
