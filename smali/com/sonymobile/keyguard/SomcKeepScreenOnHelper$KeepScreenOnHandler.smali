.class Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;
.super Landroid/os/Handler;
.source "SomcKeepScreenOnHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepScreenOnHandler"
.end annotation


# instance fields
.field private final mSomcKeepScreenOnHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;->mSomcKeepScreenOnHelper:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;->mSomcKeepScreenOnHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;

    if-eqz p0, :cond_0

    .line 127
    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->access$100(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
