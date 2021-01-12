.class Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockscreenSkinningController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeChangedReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$1;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$ThemeChangedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 128
    const-class p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->access$100(Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;Landroid/content/Context;)V

    return-void
.end method
