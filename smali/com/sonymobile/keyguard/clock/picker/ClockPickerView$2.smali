.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;
.super Ljava/lang/Object;
.source "ClockPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;


# direct methods
.method constructor <init>(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$2;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->access$200(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerController;->exitClockPicker(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;Z)V

    return-void
.end method
