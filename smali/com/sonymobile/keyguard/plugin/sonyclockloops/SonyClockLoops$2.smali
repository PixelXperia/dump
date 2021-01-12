.class Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$2;
.super Ljava/lang/Object;
.source "SonyClockLoops.java"

# interfaces
.implements Lcom/sonymobile/systemui/lockscreen/LockscreenStyleCoverControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStyleCoverClosed(Z)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;->access$100(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SonyClockLoops;Z)V

    return-void
.end method
