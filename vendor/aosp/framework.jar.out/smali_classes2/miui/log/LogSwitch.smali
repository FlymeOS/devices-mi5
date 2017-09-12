.class public Lmiui/log/LogSwitch;
.super Ljava/lang/Object;
.source "LogSwitch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final isOn:Z

.field public final tagGroupName:Ljava/lang/String;

.field public final tagName:Ljava/lang/String;

.field public final uniqueName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "tagGroupName"    # Ljava/lang/String;
    .param p3, "isOn"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lmiui/log/LogSwitch;->isOn:Z

    .line 20
    iget-object v0, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseLogSwitch(Ljava/lang/String;)Lmiui/log/LogSwitch;
    .locals 7
    .param p0, "logSwitchStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v1

    .line 51
    :cond_1
    const-string v2, "\\s+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "switchParts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 55
    aget-object v2, v0, v4

    const-string v3, "Tag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    new-instance v1, Lmiui/log/LogSwitch;

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 57
    :cond_2
    aget-object v2, v0, v4

    const-string v3, "Group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v1, Lmiui/log/LogSwitch;

    const-string v2, ""

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/log/LogSwitch;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static parseLogSwitches(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "logSwitchesStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/LogSwitch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "logSwitchStrs":[Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v6, "logSwitches":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/log/LogSwitch;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 68
    .local v4, "logSwitchStr":Ljava/lang/String;
    invoke-static {v4}, Lmiui/log/LogSwitch;->parseLogSwitch(Ljava/lang/String;)Lmiui/log/LogSwitch;

    move-result-object v3

    .line 69
    .local v3, "logSwitch":Lmiui/log/LogSwitch;
    if-eqz v3, :cond_0

    .line 70
    iget-object v7, v3, Lmiui/log/LogSwitch;->uniqueName:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "logSwitch":Lmiui/log/LogSwitch;
    .end local v4    # "logSwitchStr":Ljava/lang/String;
    :cond_1
    return-object v6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    iget-boolean v1, p0, Lmiui/log/LogSwitch;->isOn:Z

    if-eqz v1, :cond_0

    const-string v0, "on"

    .line 30
    .local v0, "statusStr":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/log/LogSwitch;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    :goto_1
    return-object v1

    .line 29
    .end local v0    # "statusStr":Ljava/lang/String;
    :cond_0
    const-string v0, "off"

    goto :goto_0

    .line 33
    .restart local v0    # "statusStr":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/log/LogSwitch;->tagGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
