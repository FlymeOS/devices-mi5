.class public Lcom/android/settings/BaseListFragment;
.super Lmiui/app/ListFragment;
.source "BaseListFragment.java"


# instance fields
.field protected cs:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/app/ListFragment;-><init>()V

    return-void
.end method

.method private Z()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Lmiui/app/ListFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BaseListFragment;->cs:Z

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseListFragment;->setThemeRes(I)V

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/BaseListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/fy;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/BaseListFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/BaseListFragment;->finish()V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lmiui/app/ListFragment;->onResume()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/BaseListFragment;->cs:Z

    .line 126
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BaseListFragment;->cs:Z

    .line 132
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lmiui/app/ListFragment;->onStart()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;->Z()V

    .line 72
    return-void
.end method
