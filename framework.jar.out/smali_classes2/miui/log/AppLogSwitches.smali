.class public Lmiui/log/AppLogSwitches;
.super Ljava/lang/Object;
.source "AppLogSwitches.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final logSwitches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;

.field public final programName:Ljava/lang/String;

.field public final targetAllApps:Z

.field public final uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "targetAllApps"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "programName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p4, "logSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    .line 19
    iput-object p2, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    .line 21
    iget-boolean v0, p0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "all"

    iput-object v0, p0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    .line 28
    :goto_0
    iput-object p4, p0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    .line 29
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "program_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseAppLogSwitches(Ljava/lang/String;)Lmiui/log/AppLogSwitches;
    .locals 9
    .param p0, "appLogSwitchesStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 72
    const-string v4, "\\|"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "appLogSwitchParts":[Ljava/lang/String;
    array-length v4, v0

    if-eq v4, v8, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v3

    .line 76
    :cond_1
    aget-object v4, v0, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/log/LogSwitch;->parseLogSwitches(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 77
    .local v1, "logSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "targetParts":[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v7, :cond_2

    .line 82
    aget-object v4, v2, v6

    const-string v5, "all"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    new-instance v3, Lmiui/log/AppLogSwitches;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v7, v4, v5, v1}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 87
    :cond_2
    array-length v4, v2

    if-ne v4, v8, :cond_0

    .line 89
    aget-object v4, v2, v6

    const-string v5, "package"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    new-instance v3, Lmiui/log/AppLogSwitches;

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v6, v4, v5, v1}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 91
    :cond_3
    aget-object v4, v2, v6

    const-string v5, "program"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    new-instance v3, Lmiui/log/AppLogSwitches;

    const-string v4, ""

    aget-object v5, v2, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5, v1}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 62
    new-instance v0, Lmiui/log/AppLogSwitches;

    iget-boolean v4, p0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    iget-object v5, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v4, v5, v6, v7}, Lmiui/log/AppLogSwitches;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 63
    .local v0, "clonedObject":Lmiui/log/AppLogSwitches;
    iget-object v4, p0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/log/LogSwitch;

    .line 64
    .local v3, "logSwitch":Lmiui/log/LogSwitch;
    invoke-virtual {v3}, Lmiui/log/LogSwitch;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/LogSwitch;

    .line 65
    .local v1, "clonedSwitch":Lmiui/log/LogSwitch;
    iget-object v4, v0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v5, v3, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    .end local v1    # "clonedSwitch":Lmiui/log/LogSwitch;
    .end local v3    # "logSwitch":Lmiui/log/LogSwitch;
    :cond_0
    return-object v0
.end method

.method public merge(Lmiui/log/AppLogSwitches;)V
    .locals 2
    .param p1, "other"    # Lmiui/log/AppLogSwitches;

    .prologue
    .line 32
    iget-object v0, p1, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    iget-object v1, p0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-boolean v4, p0, Lmiui/log/AppLogSwitches;->targetAllApps:Z

    if-eqz v4, :cond_1

    .line 42
    const-string v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :goto_0
    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "firstLogSwitch":Z
    iget-object v4, p0, Lmiui/log/AppLogSwitches;->logSwitches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/log/LogSwitch;

    .line 51
    .local v2, "logSwitch":Lmiui/log/LogSwitch;
    if-nez v0, :cond_0

    .line 52
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    invoke-virtual {v2}, Lmiui/log/LogSwitch;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/4 v0, 0x0

    .line 56
    goto :goto_1

    .line 43
    .end local v0    # "firstLogSwitch":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "logSwitch":Lmiui/log/LogSwitch;
    :cond_1
    iget-object v4, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 44
    const-string v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/log/AppLogSwitches;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    :cond_2
    const-string v4, "program "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/log/AppLogSwitches;->programName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 57
    .restart local v0    # "firstLogSwitch":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
