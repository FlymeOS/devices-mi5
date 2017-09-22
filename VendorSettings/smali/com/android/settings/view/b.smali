.class final Lcom/android/settings/view/b;
.super Landroid/database/DataSetObserver;
.source "GridPreference.java"


# instance fields
.field final synthetic auO:Lcom/android/settings/view/GridPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/view/GridPreference;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/view/b;->auO:Lcom/android/settings/view/GridPreference;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/view/b;->auO:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v0}, Lcom/android/settings/view/GridPreference;->update()V

    .line 47
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/view/b;->auO:Lcom/android/settings/view/GridPreference;

    invoke-virtual {v0}, Lcom/android/settings/view/GridPreference;->update()V

    .line 52
    return-void
.end method
