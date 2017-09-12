.class Lmiui/app/ToggleManager$12;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$QuietModeEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lmiui/app/ToggleManager$12;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuietModeEnableChange(Z)V
    .locals 1
    .param p1, "isMode"    # Z

    .prologue
    .line 1029
    iget-object v0, p0, Lmiui/app/ToggleManager$12;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateQuietModeToggle()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$1600(Lmiui/app/ToggleManager;)V

    .line 1030
    return-void
.end method
