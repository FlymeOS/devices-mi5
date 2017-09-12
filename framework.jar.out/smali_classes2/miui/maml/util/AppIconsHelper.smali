.class public Lmiui/maml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# static fields
.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static final mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

.field private static mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lmiui/maml/util/AppIconsHelper$1;

    invoke-direct {v0}, Lmiui/maml/util/AppIconsHelper$1;-><init>()V

    sput-object v0, Lmiui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 101
    .local v0, "con":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v1, v2, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 102
    .local v1, "version":I
    sget v2, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    if-le v1, v2, :cond_0

    .line 103
    invoke-static {}, Lmiui/maml/util/AppIconsHelper;->clearCache()V

    .line 104
    sput v1, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    .line 106
    :cond_0
    return-void
.end method

.method public static cleanUp()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lmiui/maml/RenderThread;->globalThreadStop()V

    .line 43
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    invoke-virtual {v0}, Lmiui/maml/util/RendererCoreCache;->clear()V

    .line 111
    :cond_0
    return-void
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "cacheTime"    # J

    .prologue
    .line 59
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 60
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .local v3, "activityName":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    .line 61
    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 62
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 64
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v6

    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "cacheTime"    # J

    .prologue
    .line 79
    sget-object v1, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lmiui/maml/util/RendererCoreCache;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v3}, Lmiui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    .line 84
    :cond_0
    :try_start_0
    invoke-static {p0}, Lmiui/maml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "key":Ljava/lang/String;
    sget-object v1, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    invoke-virtual {v1, v2, p4, p5}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v9

    .line 87
    .local v9, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-nez v9, :cond_1

    .line 88
    invoke-static {p1, p2, p3}, Lmiui/content/res/IconCustomizer;->getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "fancyIconRelativePath":Ljava/lang/String;
    sget-object v1, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    new-instance v6, Lmiui/maml/util/FancyIconResourceLoader;

    invoke-direct {v6, v8}, Lmiui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v7, Lmiui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v3, p0

    move-wide v4, p4

    invoke-virtual/range {v1 .. v7}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v9

    .line 92
    .end local v8    # "fancyIconRelativePath":Ljava/lang/String;
    :cond_1
    if-eqz v9, :cond_2

    iget-object v1, v9, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-eqz v1, :cond_2

    new-instance v1, Lmiui/maml/FancyDrawable;

    iget-object v3, v9, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    invoke-direct {v1, v3}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2    # "key":Ljava/lang/String;
    .end local v9    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :goto_0
    return-object v1

    .line 92
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v9    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    .end local v2    # "key":Ljava/lang/String;
    .end local v9    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MAML AppIconsHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "cacheTime"    # J

    .prologue
    .line 50
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 51
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-static {p0, v0, p2, p3, p4}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 50
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "cacheTime"    # J

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "info":Landroid/content/pm/PackageItemInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 71
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 74
    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method
