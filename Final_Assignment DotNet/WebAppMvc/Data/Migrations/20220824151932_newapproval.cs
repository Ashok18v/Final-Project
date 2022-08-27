using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebAppMvc.Data.Migrations
{
    public partial class newapproval : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "approvalRejected",
                columns: table => new
                {
                    Email = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Status = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateIndex(
                name: "IX_admin_Email",
                table: "admin",
                column: "Email",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_approvalRejected_Email",
                table: "approvalRejected",
                column: "Email",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "approvalRejected");

            migrationBuilder.DropIndex(
                name: "IX_admin_Email",
                table: "admin");
        }
    }
}
