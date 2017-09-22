.class public abstract Lcom/miui/internal/app/ActionBarDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/app/a;
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDelegate"

.field static final aP:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field static final aQ:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field aR:Z

.field aS:Z

.field private aT:Lmiui/app/ActionBar;

.field private aU:Landroid/view/MenuInflater;

.field private aV:I

.field private aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

.field private aX:Z

.field protected mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field protected mActionMode:Landroid/view/ActionMode;

.field final mActivity:Landroid/app/Activity;

.field protected mFeatureIndeterminateProgress:Z

.field protected mFeatureProgress:Z

.field protected mImmersionLayoutResourceId:I

.field protected mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field protected mSubDecorInstalled:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aV:I

    .line 75
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 76
    return-void
.end method


# virtual methods
.method protected createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 242
    return-object v0
.end method

.method public dismissImmersionMenu(Z)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->dismiss(Z)V

    .line 340
    :cond_0
    return-void
.end method

.method public final getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aS:Z

    if-eqz v0, :cond_2

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aT:Lmiui/app/ActionBar;

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aT:Lmiui/app/ActionBar;

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aT:Lmiui/app/ActionBar;

    return-object v0

    .line 88
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aT:Lmiui/app/ActionBar;

    goto :goto_0
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 132
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lmiui/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    :cond_0
    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Landroid/view/MenuInflater;

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Landroid/view/MenuInflater;

    return-object v0

    .line 100
    :cond_1
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aU:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public getTranslucentStatus()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aV:I

    return v0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 115
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 116
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.support.UI_OPTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    const-string v1, "ActionBarDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not in manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isImmersionMenuEnabled()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aX:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 248
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 149
    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 258
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method protected abstract onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 157
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method protected reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    goto :goto_0
.end method

.method public requestWindowFeature(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 179
    :pswitch_1
    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Z

    goto :goto_0

    .line 182
    :pswitch_2
    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aS:Z

    goto :goto_0

    .line 185
    :pswitch_3
    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    goto :goto_0

    .line 188
    :pswitch_4
    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 2

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aX:Z

    .line 280
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aR:Z

    if-eqz v0, :cond_1

    .line 281
    if-eqz p1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->showImmersionMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 288
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->invalidateOptionsMenu()V

    .line 290
    :cond_1
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hideImmersionMore()Z

    goto :goto_0
.end method

.method protected setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 234
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0
.end method

.method public setTranslucentStatus(I)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 262
    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    move p1, v0

    .line 266
    :cond_0
    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aV:I

    if-eq v0, p1, :cond_1

    .line 267
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iput p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aV:I

    .line 272
    :cond_1
    return-void
.end method

.method public showImmersionMenu()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    sget v1, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 301
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find anchor view in actionbar. Do you use default actionbar and immersion menu is enabled?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aX:Z

    if-nez v0, :cond_1

    .line 311
    const-string v0, "ActionBarDelegate"

    const-string v1, "Try to show immersion menu when immersion menu disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-nez p1, :cond_2

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a valid anchor view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 320
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-nez v1, :cond_4

    .line 322
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v1, :cond_3

    .line 323
    new-instance v1, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    .line 330
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 325
    :cond_3
    new-instance v1, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    goto :goto_1

    .line 328
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->aW:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v1, v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method
