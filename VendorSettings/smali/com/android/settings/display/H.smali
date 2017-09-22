.class Lcom/android/settings/display/H;
.super Ljava/lang/Object;
.source "ResolutionListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Zw:Ljava/lang/String;

.field final synthetic Zx:Lcom/android/settings/display/ResolutionListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ResolutionListPreference;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/display/H;->Zx:Lcom/android/settings/display/ResolutionListPreference;

    iput-object p2, p0, Lcom/android/settings/display/H;->Zw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/display/H;->Zx:Lcom/android/settings/display/ResolutionListPreference;

    invoke-virtual {v0}, Lcom/android/settings/display/ResolutionListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/settings/display/H;->Zx:Lcom/android/settings/display/ResolutionListPreference;

    invoke-virtual {v1}, Lcom/android/settings/display/ResolutionListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/android/settings/display/H;->Zw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
