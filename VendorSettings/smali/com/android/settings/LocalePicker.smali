.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/settings/cs;


# instance fields
.field private oU:Lcom/android/settings/LocalePicker$MyDialogFragment;

.field private oV:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 47
    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->oV:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->oV:Ljava/util/Locale;

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c098b

    new-instance v2, Lcom/android/settings/dL;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/dL;-><init>(Lcom/android/settings/LocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/iC;->a(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/LocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 62
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 63
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 64
    return-object v1
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/iC;->ae(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/android/settings/LocalePicker;->oV:Ljava/util/Locale;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->showDialog(I)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 74
    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->oV:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings/LocalePicker;->oV:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->oU:Lcom/android/settings/LocalePicker$MyDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->oU:Lcom/android/settings/LocalePicker$MyDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/LocalePicker$MyDialogFragment;->hW()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->oU:Lcom/android/settings/LocalePicker$MyDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/LocalePicker$MyDialogFragment;->dismiss()V

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->oU:Lcom/android/settings/LocalePicker$MyDialogFragment;

    .line 119
    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->oU:Lcom/android/settings/LocalePicker$MyDialogFragment;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    new-instance v0, Lcom/android/settings/LocalePicker$MyDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/LocalePicker$MyDialogFragment;-><init>(Lcom/android/settings/cs;I)V

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->oU:Lcom/android/settings/LocalePicker$MyDialogFragment;

    .line 95
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->oU:Lcom/android/settings/LocalePicker$MyDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LocalePicker$MyDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 96
    return-void
.end method
