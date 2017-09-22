.class Lcom/android/settings/accessibility/ListDialogPreference$1;
.super Ljava/lang/Object;
.source "ListDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Dv:Lcom/android/settings/accessibility/ListDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->Dv:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->Dv:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->Dv:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->Dv:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 160
    :cond_1
    return-void
.end method
