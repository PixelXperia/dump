.class Lcom/sonymobile/settings/TetherConfirmationDialog$2;
.super Ljava/lang/Object;
.source "TetherConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/TetherConfirmationDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/TetherConfirmationDialog;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 141
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-static {v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->access$000(Lcom/sonymobile/settings/TetherConfirmationDialog;)I

    move-result v1

    const-string v2, "TETHER_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 146
    iget-object p2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-static {p2}, Lcom/sonymobile/settings/TetherConfirmationDialog;->access$100(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/widget/CheckBox;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-static {p2}, Lcom/sonymobile/settings/TetherConfirmationDialog;->access$100(Lcom/sonymobile/settings/TetherConfirmationDialog;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 147
    iget-object p2, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 149
    iget-object v1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-static {v1}, Lcom/sonymobile/settings/TetherConfirmationDialog;->access$200(Lcom/sonymobile/settings/TetherConfirmationDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 153
    iget-object p0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$2;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
