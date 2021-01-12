.class Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$1;
.super Ljava/lang/Object;
.source "SomcKeepScreenOnHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;-><init>(Lcom/sonymobile/keyguard/SomcUserActivityPoker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$1;->this$0:Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$1;->this$0:Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;

    new-instance v0, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;

    invoke-direct {v0, p0}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper$KeepScreenOnHandler;-><init>(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;)V

    invoke-static {p0, v0}, Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;->access$002(Lcom/sonymobile/keyguard/SomcKeepScreenOnHelper;Landroid/os/Handler;)Landroid/os/Handler;

    return-void
.end method
