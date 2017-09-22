.class public abstract Lcom/android/camera/ui/SettingView;
.super Landroid/widget/RelativeLayout;
.source "SettingView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/V6AbstractIndicator;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOrientation:I

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field protected mRotatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/camera/ui/MessageDispacher;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            ")V"
        }
    .end annotation
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 36
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 37
    .local v0, "b":Lcom/android/camera/ui/V6AbstractIndicator;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->reloadPreference()V

    goto :goto_0

    .line 39
    .end local v0    # "b":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 42
    return-void
.end method
