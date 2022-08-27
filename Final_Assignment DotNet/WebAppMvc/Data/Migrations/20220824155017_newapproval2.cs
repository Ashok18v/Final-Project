using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebAppMvc.Data.Migrations
{
    public partial class newapproval2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddPrimaryKey(
                name: "PK_approvalRejected",
                table: "approvalRejected",
                column: "Email");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_approvalRejected",
                table: "approvalRejected");
        }
    }
}
