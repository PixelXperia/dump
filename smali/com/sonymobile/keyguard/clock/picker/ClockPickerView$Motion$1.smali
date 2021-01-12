.class final enum Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion$1;
.super Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
.source "ClockPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 414
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/clock/picker/ClockPickerView$Motion;-><init>(Ljava/lang/String;ILcom/sonymobile/keyguard/clock/picker/ClockPickerView$1;)V

    return-void
.end method


# virtual methods
.method public getModifiedScrollPosition(II)I
    .locals 0

    int-to-float p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    .line 417
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method
