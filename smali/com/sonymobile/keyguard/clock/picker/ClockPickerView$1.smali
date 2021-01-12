.class Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;
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

    .line 53
    iput-object p1, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;->this$0:Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;

    invoke-static {p0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->access$000(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;->access$100(Lcom/sonymobile/keyguard/clock/picker/ClockPickerView;I)V

    return-void
.end method
