using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebAppMvc.Data.Migrations
{
    public partial class adminone1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "RoleName",
                table: "admin",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "RoleName",
                table: "admin");
        }
    }
}
