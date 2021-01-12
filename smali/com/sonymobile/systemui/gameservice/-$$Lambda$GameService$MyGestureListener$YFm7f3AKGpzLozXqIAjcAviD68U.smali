.class public final synthetic Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$MyGestureListener$YFm7f3AKGpzLozXqIAjcAviD68U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$MyGestureListener$YFm7f3AKGpzLozXqIAjcAviD68U;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/-$$Lambda$GameService$MyGestureListener$YFm7f3AKGpzLozXqIAjcAviD68U;->f$0:Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    invoke-static {p0}, Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;->lambda$onGesture$0(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
