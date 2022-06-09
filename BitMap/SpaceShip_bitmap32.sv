localparam  int OBJECT_WIDTH_X = 16;
localparam  int OBJECT_HEIGHT_Y = 15;

logic [0:OBJECT_HEIGHT_Y-1] [0:OBJECT_WIDTH_X-1] [8-1:0] object_colors = {
{8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hB6, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, },
{8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hB6, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, },
{8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hB6, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, },
{8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hB6, 8'hB6, 8'hB6, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, },
{8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hB6, 8'hB6, 8'hB6, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, },
{8'hFF, 8'hFF, 8'hFF, 8'hE4, 8'hFF, 8'hFF, 8'hB6, 8'hB6, 8'hB6, 8'hFF, 8'hFF, 8'hE4, 8'hFF, 8'hFF, 8'hFF, },
{8'hFF, 8'hFF, 8'hFF, 8'hE4, 8'hFF, 8'hFF, 8'hB6, 8'hB6, 8'hB6, 8'hFF, 8'hFF, 8'hE4, 8'hFF, 8'hFF, 8'hFF, },
{8'hE4, 8'hFF, 8'hFF, 8'hB6, 8'hFF, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hFF, 8'hB6, 8'hFF, 8'hFF, 8'hE4, },
{8'hE4, 8'hFF, 8'hFF, 8'hB6, 8'h13, 8'hB6, 8'hB6, 8'hE4, 8'hB6, 8'hB6, 8'h13, 8'hB6, 8'hFF, 8'hFF, 8'hE4, },
{8'hB6, 8'hFF, 8'hFF, 8'h13, 8'hB6, 8'hB6, 8'hE4, 8'hE4, 8'hE4, 8'hB6, 8'hB6, 8'h13, 8'hFF, 8'hFF, 8'hB6, },
{8'hB6, 8'hFF, 8'hFF, 8'hB6, 8'hB6, 8'hB6, 8'hE4, 8'hB6, 8'hE4, 8'hB6, 8'hB6, 8'hB6, 8'hFF, 8'hFF, 8'hB6, },
{8'hB6, 8'hFF, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hFF, 8'hB6, },
{8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hE4, 8'hB6, 8'hB6, 8'hB6, 8'hE4, 8'hB6, 8'hB6, 8'hB6, 8'hB6, 8'hB6, },
{8'hB6, 8'hB6, 8'hB6, 8'hFF, 8'hE4, 8'hE4, 8'hB6, 8'hB6, 8'hB6, 8'hE4, 8'hE4, 8'hFF, 8'hB6, 8'hB6, 8'hB6, },
{8'hB6, 8'hB6, 8'hFF, 8'hFF, 8'hE4, 8'hE4, 8'hFF, 8'hB6, 8'hFF, 8'hE4, 8'hE4, 8'hFF, 8'hFF, 8'hB6, 8'hB6, },
{8'hB6, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hB6, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hFF, 8'hB6, }
};

wire [7:0] red_sig, green_sig, blue_sig;
assign red_sig     = {object_colors[offsetY][offsetX][7:5] , 5'd0};
assign green_sig   = {object_colors[offsetY][offsetX][4:2] , 5'd0};
assign blue_sig    = {object_colors[offsetY][offsetX][1:0] , 6'd0};


