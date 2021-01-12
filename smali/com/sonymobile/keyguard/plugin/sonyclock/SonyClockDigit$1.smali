.class Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SonyClockDigit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->updateDigit(CZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit$1;->this$0:Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;

    invoke-static {p0}, Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;->access$000(Lcom/sonymobile/keyguard/plugin/sonyclock/SonyClockDigit;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
