.class Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$4;
.super Ljava/lang/Object;
.source "LockscreenAssistIconController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->hideAssistIcon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$4;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$4;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$900(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$4;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$900(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
