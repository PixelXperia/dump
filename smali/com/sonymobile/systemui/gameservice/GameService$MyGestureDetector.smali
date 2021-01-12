.class final Lcom/sonymobile/systemui/gameservice/GameService$MyGestureDetector;
.super Landroid/view/GestureDetector;
.source "GameService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/gameservice/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/gameservice/GameService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/gameservice/GameService;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureDetector;->this$0:Lcom/sonymobile/systemui/gameservice/GameService;

    .line 131
    invoke-direct {p0, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 136
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
