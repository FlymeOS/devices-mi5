.class public abstract Lmiui/external/b;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private brY:Lmiui/external/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method public Mt()Lmiui/external/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    return-object v0
.end method

.method a(Lmiui/external/a;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    .line 50
    invoke-virtual {p0, p1}, Lmiui/external/b;->attachBaseContext(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    invoke-virtual {v0, p1}, Lmiui/external/a;->a(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    invoke-virtual {v0}, Lmiui/external/a;->d()V

    .line 68
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    invoke-virtual {v0}, Lmiui/external/a;->f()V

    .line 107
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    invoke-virtual {v0}, Lmiui/external/a;->Ms()V

    .line 78
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    invoke-virtual {v0, p1}, Lmiui/external/a;->a(I)V

    .line 127
    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    invoke-virtual {v0, p1}, Lmiui/external/a;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 139
    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lmiui/external/b;->brY:Lmiui/external/a;

    invoke-virtual {v0, p1}, Lmiui/external/a;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 149
    return-void
.end method
