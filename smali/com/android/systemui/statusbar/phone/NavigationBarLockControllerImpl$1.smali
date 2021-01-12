.class Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "NavigationBarLockControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->updateFrontTask()V

    .line 118
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarLockControllerImpl;Z)V

    return-void
.end method
