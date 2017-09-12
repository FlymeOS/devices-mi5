.class Lmiui/view/MiuiKeyBoardView$1;
.super Ljava/lang/Object;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiKeyBoardView;


# direct methods
.method constructor <init>(Lmiui/view/MiuiKeyBoardView;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    # invokes: Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V
    invoke-static {v0}, Lmiui/view/MiuiKeyBoardView;->access$000(Lmiui/view/MiuiKeyBoardView;)V

    .line 249
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$1;->this$0:Lmiui/view/MiuiKeyBoardView;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void
.end method
