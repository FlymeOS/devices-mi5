.class public final Lmiui/log/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidTag(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .locals 1
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiTag(I)Lmiui/log/MiuiTag;
    .locals 1
    .param p0, "tagID"    # I

    .prologue
    .line 30
    invoke-static {p0}, Lmiui/log/MiuiTags;->get(I)Lmiui/log/MiuiTag;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiTag(Ljava/lang/String;)Lmiui/log/MiuiTag;
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Lmiui/log/MiuiTags;->get(Ljava/lang/String;)Lmiui/log/MiuiTag;

    move-result-object v0

    return-object v0
.end method

.method public static getTagGroup(Ljava/lang/String;)Lmiui/log/TagGroup;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lmiui/log/TagGroups;->get(Ljava/lang/String;)Lmiui/log/TagGroup;

    move-result-object v0

    return-object v0
.end method

.method public static isAndroidTagOn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Lmiui/log/AndroidTags;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiTagOn(I)Z
    .locals 1
    .param p0, "tagID"    # I

    .prologue
    .line 38
    invoke-static {p0}, Lmiui/log/MiuiTags;->isOn(I)Z

    move-result v0

    return v0
.end method

.method public static isMiuiTagOn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lmiui/log/MiuiTags;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTagGroupOn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lmiui/log/TagGroups;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static switchOffAndroidTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static switchOffMiuiTag(I)V
    .locals 0
    .param p0, "tagID"    # I

    .prologue
    .line 54
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOff(I)V

    .line 55
    return-void
.end method

.method public static switchOffMiuiTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static declared-synchronized switchOffTagGroup(Ljava/lang/String;)V
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lmiui/log/Tags;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lmiui/log/TagGroups;->switchOff(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static switchOnAndroidTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static switchOnMiuiTag(I)V
    .locals 0
    .param p0, "tagID"    # I

    .prologue
    .line 46
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOn(I)V

    .line 47
    return-void
.end method

.method public static switchOnMiuiTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static declared-synchronized switchOnTagGroup(Ljava/lang/String;)V
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lmiui/log/Tags;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lmiui/log/TagGroups;->switchOn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v0

    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
