.class Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;
.super Ljava/lang/Object;
.source "SecondHand.java"

# interfaces
.implements Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$500(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;Z)V

    return-void
.end method

.method public restartClockForDozing()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->stopClockTicking()V

    .line 134
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$600(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$400(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)V

    return-void
.end method

.method public stopClockForDozing()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$6;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->stopClockTicking()V

    return-void
.end method
