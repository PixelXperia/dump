.class public Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "NetworkSearchWarningDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;
    .locals 3

    .line 56
    new-instance v0, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_dialog_type"

    .line 59
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a025d

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 69
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;

    iput-object v0, p0, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;->mListener:Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 71
    :catch_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "must implement NetworkSearchWarningDialogListener"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;->mListener:Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_dialog_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 112
    iget-object p0, p0, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;->mListener:Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    invoke-interface {p0, v0, p1}, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;->onDialogButtonClicked(II)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment;->mListener:Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "extra_dialog_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 102
    invoke-interface {p1, p2, p0}, Lcom/sonymobile/settings/phone/NetworkSearchWarningDialogFragment$NetworkSearchWarningDialogListener;->onDialogButtonClicked(II)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 78
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120859

    .line 79
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_dialog_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "NetworkSearchWarningDialogFragment"

    const v3, 0x104000a

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 89
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120d02

    .line 90
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string p0, "onCreateDialog : create disable data confirm dialog."

    .line 91
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120d01

    .line 84
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string p0, "onCreateDialog : create end call prompt dialog."

    .line 85
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
