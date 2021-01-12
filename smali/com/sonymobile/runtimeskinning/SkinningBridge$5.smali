.class Lcom/sonymobile/runtimeskinning/SkinningBridge$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SkinningBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/SkinningBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 321
    invoke-static {p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$600(Z)V

    return-void
.end method
