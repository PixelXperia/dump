.class Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$3;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "LockscreenAssistIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->showAssistIcon()V
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

    .line 208
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController$3;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;->access$800(Lcom/sonymobile/systemui/lockscreen/LockscreenAssistIconController;Z)V

    return-void
.end method
