.class Lcom/android/settings/cM;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic mo:Lcom/android/settings/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/DropDownPreference;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/cM;->mo:Lcom/android/settings/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/cM;->mo:Lcom/android/settings/DropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/DropDownPreference;->g(IZ)V

    .line 59
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
