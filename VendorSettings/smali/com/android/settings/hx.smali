.class Lcom/android/vendorsettings/hx;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic zP:Lcom/android/vendorsettings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

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
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->b(Lcom/android/vendorsettings/SettingsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->c(Lcom/android/vendorsettings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->d(Lcom/android/vendorsettings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setResultView(Landroid/view/View;)V

    .line 174
    invoke-static {}, Lcom/android/vendorsettings/SettingsFragment;->hP()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/SettingsFragment;->ct:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->e(Lcom/android/vendorsettings/SettingsFragment;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/SettingsFragment;->a(Lcom/android/vendorsettings/SettingsFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 178
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->g(Lcom/android/vendorsettings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/SettingsFragment;->f(Lcom/android/vendorsettings/SettingsFragment;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->g(Lcom/android/vendorsettings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/SettingsFragment;->h(Lcom/android/vendorsettings/SettingsFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->g(Lcom/android/vendorsettings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/hy;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/hy;-><init>(Lcom/android/vendorsettings/hx;)V

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
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/SettingsFragment;->a(Lcom/android/vendorsettings/SettingsFragment;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 208
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->d(Lcom/android/vendorsettings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->c(Lcom/android/vendorsettings/SettingsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/SettingsFragment;->a(Lcom/android/vendorsettings/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->j(Lcom/android/vendorsettings/SettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/SettingsFragment;->k(Lcom/android/vendorsettings/SettingsFragment;)Lcom/android/vendorsettings/hC;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/hx;->zP:Lcom/android/vendorsettings/SettingsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/SettingsFragment;->j(Lcom/android/vendorsettings/SettingsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/hC;->r(Ljava/util/List;)V

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
