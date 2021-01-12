.class public Lcom/android/systemui/recents/RecentsSystemUserService;
.super Landroid/app/Service;
.source "RecentsSystemUserService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 43
    const-class p1, Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/LegacyRecentsImpl;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->getSystemUserCallbacks()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
