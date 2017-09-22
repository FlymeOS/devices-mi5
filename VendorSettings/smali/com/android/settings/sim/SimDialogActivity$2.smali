.class Lcom/android/vendorsettings/sim/SimDialogActivity$2;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic apA:Lcom/android/vendorsettings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sim/SimDialogActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$2;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/sim/SimDialogActivity$2;->apA:Lcom/android/vendorsettings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sim/SimDialogActivity;->finish()V

    .line 110
    return-void
.end method
