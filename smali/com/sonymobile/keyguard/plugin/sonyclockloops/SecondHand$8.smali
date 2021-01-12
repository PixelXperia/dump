.class Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$8;
.super Ljava/lang/Object;
.source "SecondHand.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 169
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$8;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand$8;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclockloops/SecondHand;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
