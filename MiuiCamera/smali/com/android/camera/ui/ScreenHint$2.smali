.class Lcom/android/camera/ui/ScreenHint$2;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    const/4 v1, 0x0

    # invokes: Lcom/android/camera/ui/ScreenHint;->recordLocation(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/ScreenHint;->access$000(Lcom/android/camera/ui/ScreenHint;Z)V

    .line 128
    return-void
.end method
