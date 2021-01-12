.class Lcom/sonymobile/settings/TetherConfirmationDialog$3;
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

    .line 134
    iput-object p1, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$3;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    iget-object p0, p0, Lcom/sonymobile/settings/TetherConfirmationDialog$3;->this$0:Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
