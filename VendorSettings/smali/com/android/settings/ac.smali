.class public abstract Lcom/android/settings/ac;
.super Ljava/lang/Object;
.source "BaseEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field protected co:Lmiui/widget/SlidingButton;

.field protected cp:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mObserver:Landroid/database/ContentObserver;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/settings/ad;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ad;-><init>(Lcom/android/settings/ac;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ac;->mObserver:Landroid/database/ContentObserver;

    .line 27
    iput-object p1, p0, Lcom/android/settings/ac;->mActivity:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/android/settings/ac;->co:Lmiui/widget/SlidingButton;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/ac;->mTitle:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ac;->mTitle:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public a(Lmiui/widget/SlidingButton;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/settings/ac;->co:Lmiui/widget/SlidingButton;

    if-ne v0, p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lmiui/widget/SlidingButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ac;

    .line 55
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/settings/ac;->a(Lmiui/widget/SlidingButton;)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ac;->co:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    iput-object p1, p0, Lcom/android/settings/ac;->co:Lmiui/widget/SlidingButton;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/ac;->update()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/ac;->co:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/ac;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/ac;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ac;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ac;->co:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ac;->cp:Z

    .line 49
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/ac;->update()V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/ac;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/settings/ac;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ac;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ac;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ac;->co:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    iput-boolean v3, p0, Lcom/android/settings/ac;->cp:Z

    .line 41
    return-void
.end method

.method protected abstract update()V
.end method
