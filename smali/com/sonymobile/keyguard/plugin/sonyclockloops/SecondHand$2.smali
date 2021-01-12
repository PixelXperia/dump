.class Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$2;
.super Ljava/lang/Object;
.source "SecondHand.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 74
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$2;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;->access$100(Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
