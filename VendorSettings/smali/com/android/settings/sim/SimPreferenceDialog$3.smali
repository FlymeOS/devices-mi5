.class Lcom/android/settings/sim/SimPreferenceDialog$3;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic apO:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$3;->apO:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$3;->apO:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimPreferenceDialog;->finish()V

    .line 181
    return-void
.end method
