.class Lcom/android/vendorsettings/sim/SimDialogActivity$4;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic apA:Lcom/android/vendorsettings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sim/SimDialogActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$4;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$4;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->finish()V

    .line 199
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
