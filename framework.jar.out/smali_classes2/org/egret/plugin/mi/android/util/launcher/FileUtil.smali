.class public Lorg/egret/plugin/mi/android/util/launcher/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 19
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v7

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 25
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 29
    .local v0, "buffer":[B
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v2, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "read":I
    if-lez v6, :cond_3

    .line 30
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 33
    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 34
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .local v3, "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    if-eqz v1, :cond_2

    .line 39
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 41
    :cond_2
    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 44
    :catch_1
    move-exception v3

    .line 45
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_3
    const/4 v7, 0x1

    .line 38
    if-eqz v2, :cond_4

    .line 39
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 41
    :cond_4
    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 44
    :catch_2
    move-exception v3

    .line 45
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "read":I
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    .line 38
    :goto_3
    if-eqz v1, :cond_5

    .line 39
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 41
    :cond_5
    if-eqz v4, :cond_6

    .line 42
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 46
    :cond_6
    :goto_4
    throw v7

    .line 44
    :catch_3
    move-exception v3

    .line 45
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 37
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 33
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static CopyToRoot(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dstRoot"    # Ljava/io/File;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    return v1

    .line 54
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v0, "dst":Ljava/io/File;
    invoke-static {p0, v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static Move(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static MoveToRoot(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dstRoot"    # Ljava/io/File;

    .prologue
    .line 63
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 67
    :goto_0
    return v1

    .line 66
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v0, "dst":Ljava/io/File;
    invoke-static {p0, v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Move(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 99
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v6, "strBuffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 106
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 109
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "strBuffer":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 110
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    const/4 v7, 0x0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 117
    :cond_0
    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v7

    .line 108
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "strBuffer":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    .line 114
    if-eqz v1, :cond_3

    .line 115
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 117
    :cond_3
    if-eqz v4, :cond_4

    .line 118
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_3
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 122
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 120
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 121
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 120
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "strBuffer":Ljava/lang/StringBuilder;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 114
    :goto_4
    if-eqz v0, :cond_5

    .line 115
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 117
    :cond_5
    if-eqz v3, :cond_6

    .line 118
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 122
    :cond_6
    :goto_5
    throw v7

    .line 120
    :catch_3
    move-exception v2

    .line 121
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 109
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p0, "dst"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 74
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v3    # "out":Ljava/io/FileWriter;
    .local v4, "out":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    const/4 v5, 0x1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 86
    :cond_0
    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 91
    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :cond_2
    :goto_1
    return v5

    .line 89
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    .line 79
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    const/4 v5, 0x0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 86
    :cond_3
    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 89
    :catch_2
    move-exception v2

    .line 90
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 83
    :goto_3
    if-eqz v0, :cond_4

    .line 84
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 86
    :cond_4
    if-eqz v3, :cond_5

    .line 87
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 91
    :cond_5
    :goto_4
    throw v5

    .line 89
    :catch_3
    move-exception v2

    .line 90
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_3

    .line 78
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_2
.end method
