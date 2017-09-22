.class Lcom/android/settings/hx;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic zP:Lcom/android/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 170
    check-cast p1, Lmiui/view/SearchActionMode;

    .line 171
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->b(Lcom/android/settings/SettingsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->c(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->d(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setResultView(Landroid/view/View;)V

    .line 174
    invoke-static {}, Lcom/android/settings/SettingsFragment;->hP()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment;->ct:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->e(Lcom/android/settings/SettingsFragment;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 178
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->g(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->f(Lcom/android/settings/SettingsFragment;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->g(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->h(Lcom/android/settings/SettingsFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->g(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/hy;

    invoke-direct {v1, p0}, Lcom/android/settings/hy;-><init>(Lcom/android/settings/hx;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 208
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->d(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->c(Lcom/android/settings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/SettingsFragment;->a(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->j(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->k(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/hC;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/hx;->zP:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->j(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/hC;->r(Ljava/util/List;)V

    .line 213
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method
