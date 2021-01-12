.class Lcom/android/systemui/statusbar/phone/NavigationModeController$2;
.super Ljava/lang/Object;
.source "NavigationModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$500(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method

.method public onUserSetupChanged()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$500(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method

.method public onUserSwitched()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$300(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$600(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method
