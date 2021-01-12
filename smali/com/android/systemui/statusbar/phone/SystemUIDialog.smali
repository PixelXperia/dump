.class public Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.super Landroid/app/AlertDialog;
.source "SystemUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 56
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    return-void
.end method

.method public static applyFlags(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 2

    .line 116
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 117
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xa0000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-object p0
.end method

.method static synthetic lambda$registerDismissListener$0(Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;Landroid/content/DialogInterface;)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->unregister()V

    return-void
.end method

.method public static registerDismissListener(Landroid/app/Dialog;)V
    .locals 2

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;)V

    .line 127
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$SystemUIDialog$aJwQFxZ3HhCkUHQluqH61p2yCMc;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SystemUIDialog$aJwQFxZ3HhCkUHQluqH61p2yCMc;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->register()V

    return-void
.end method

.method public static setShowForAllUsers(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method public static setWindowOnTop(Landroid/app/Dialog;)V
    .locals 1

    .line 108
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7de

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7e1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->register()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->unregister()V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setShowForAllUsers(Z)V
    .locals 0

    .line 78
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    return-void
.end method
