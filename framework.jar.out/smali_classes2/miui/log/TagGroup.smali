.class public final Lmiui/log/TagGroup;
.super Ljava/lang/Object;
.source "TagGroup.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field private final androidTags:[Ljava/lang/String;

.field private isGroupOn:Z

.field private final miuiTags:[Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private onNumber:I


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "miuiTags"    # [Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "miuiTags"    # [Ljava/lang/String;
    .param p3, "androidTags"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    .line 21
    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/String;

    .end local p2    # "miuiTags":[Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    .line 22
    if-nez p3, :cond_1

    new-array p3, v0, [Ljava/lang/String;

    .end local p3    # "androidTags":[Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 24
    iput v0, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 25
    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .locals 8

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 53
    const/4 v5, 0x0

    .line 54
    .local v5, "needSwitchOffTags":Z
    iget v6, p0, Lmiui/log/TagGroup;->onNumber:I

    if-nez v6, :cond_1

    .line 55
    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 56
    const/4 v5, 0x1

    .line 61
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    .line 62
    iget-object v1, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 63
    .local v4, "miuiTag":Ljava/lang/String;
    invoke-static {v4}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "miuiTag":Ljava/lang/String;
    :cond_1
    iget v6, p0, Lmiui/log/TagGroup;->onNumber:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 58
    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 59
    const/4 v5, 0x1

    goto :goto_0

    .line 65
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_2
    iget-object v1, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 66
    .local v0, "androidTag":Ljava/lang/String;
    invoke-static {v0}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 69
    .end local v0    # "androidTag":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    monitor-exit p0

    return-void

    .line 52
    .end local v5    # "needSwitchOffTags":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized switchOn()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 32
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lmiui/log/TagGroup;->onNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmiui/log/TagGroup;->onNumber:I

    .line 33
    const/4 v5, 0x0

    .line 34
    .local v5, "needSwitchOnTags":Z
    iget v6, p0, Lmiui/log/TagGroup;->onNumber:I

    if-nez v6, :cond_1

    .line 35
    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 36
    const/4 v5, 0x1

    .line 41
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    .line 42
    iget-object v1, p0, Lmiui/log/TagGroup;->androidTags:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 43
    .local v0, "androidTag":Ljava/lang/String;
    invoke-static {v0}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "androidTag":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget v6, p0, Lmiui/log/TagGroup;->onNumber:I

    if-ne v6, v7, :cond_0

    .line 38
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/log/TagGroup;->isGroupOn:Z

    .line 39
    const/4 v5, 0x1

    goto :goto_0

    .line 45
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_2
    iget-object v1, p0, Lmiui/log/TagGroup;->miuiTags:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 46
    .local v4, "miuiTag":Ljava/lang/String;
    invoke-static {v4}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "miuiTag":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void

    .line 32
    .end local v5    # "needSwitchOnTags":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
