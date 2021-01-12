.class public abstract Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "SysUiTaskStackChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkCurrentUserId(Landroid/content/Context;Z)Z
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result p1

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->checkCurrentUserId(IZ)Z

    move-result p0

    return p0
.end method
