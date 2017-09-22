.class Lcom/android/vendorsettings/print/c;
.super Landroid/database/DataSetObserver;
.source "PrintServiceSettingsFragment.java"


# instance fields
.field final synthetic amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/vendorsettings/print/c;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private th()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/print/c;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;->c(Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;)Lcom/android/vendorsettings/print/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/print/h;->getUnfilteredCount()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/vendorsettings/print/c;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;->d(Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/print/c;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;->d(Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_2

    if-gtz v0, :cond_2

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/print/c;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/print/c;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;->a(Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;I)I

    .line 126
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/vendorsettings/print/c;->th()V

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/print/c;->amr:Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;->b(Lcom/android/vendorsettings/print/PrintServiceSettingsFragment;)V

    .line 112
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/vendorsettings/print/c;->th()V

    .line 117
    return-void
.end method
