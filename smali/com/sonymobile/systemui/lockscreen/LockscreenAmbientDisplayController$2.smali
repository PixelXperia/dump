.class Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController$2;
.super Landroid/database/ContentObserver;
.source "LockscreenAmbientDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;Landroid/os/Handler;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController$2;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;->access$100(Lcom/sonymobile/systemui/lockscreen/LockscreenAmbientDisplayController;)V

    return-void
.end method
