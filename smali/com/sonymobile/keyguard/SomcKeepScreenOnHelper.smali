.class public Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;
.super Ljava/lang/Object;
.source "SomcKeepScreenOnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;
    }
.end annotation


# instance fields
.field private mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

.field private final mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/SomcUserActivityPoker;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;

    .line 54
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    new-instance v0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$1;-><init>(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;Landroid/os/Message;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->handleKeepScreenOnMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleKeepScreenOnMessage(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mUserActivityPoker:Lcom/sonymobile/keyguard/SomcUserActivityPoker;

    invoke-interface {p0}, Lcom/sonymobile/keyguard/SomcUserActivityPoker;->poke()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkIfMotionEventShouldKeepScreenOn(Landroid/view/MotionEvent;)V
    .locals 4

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x3e9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 77
    iget-object p0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 83
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->mKeepScreenOnInLockscreenHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method
