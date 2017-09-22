.class Lcom/android/settings/sim/SimPreferenceDialog$1;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic apN:Landroid/widget/Spinner;

.field final synthetic apO:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$1;->apO:Lcom/android/settings/sim/SimPreferenceDialog;

    iput-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$1;->apN:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$1;->apN:Landroid/widget/Spinner;

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$1;->apO:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v0, p3}, Lcom/android/settings/sim/SimPreferenceDialog;->a(Lcom/android/settings/sim/SimPreferenceDialog;I)I

    .line 128
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
